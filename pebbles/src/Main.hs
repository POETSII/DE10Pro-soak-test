-- Blarney imports
import Blarney
import Blarney.Queue
import Blarney.Stream
import Blarney.SourceSink

-- Pebbles imports
import Pebbles.Core.Scalar

-- Create a modular instance of a scalar core
makeScalarCoreInst :: Stream (Bit 8) -> Module (Stream (Bit 8))
makeScalarCoreInst = makeInstance "pebbles_core"

-- Create chain of scalar cores
makeScalarCoreChain :: Int -> Stream (Bit 8) -> Module (Stream (Bit 8))
makeScalarCoreChain numCores inp = do
  uartOuts <- replicateM numCores (makeScalarCoreInst nullStream)
  mergeStreams uartOuts

main :: IO ()
main = do
  -- Generate verilog module for a single scalar core (synthesis)
  let config =
        ScalarCoreConfig {
          scalarCoreInstrMemInitFile = Just "prog.mif"
        , scalarCoreDataMemInitFile  = Just "data.mif"
        }
  writeVerilogModule (makeScalarCore config) "pebbles_core" "./"
  -- Generate code for a chain of scalar cores
  writeVerilogModule (makeScalarCoreChain 10) "Pebbles" "./"

-- Helper code
-- ===========

-- Left-biased merge of two streams
mergeTwoStreams :: Bits a => Stream a -> Stream a -> Module (Stream a)
mergeTwoStreams s0 s1 = do
  queue <- makeShiftQueue 1

  always do
    when (s0.canPeek) do
      s0.consume
      enq queue (s0.peek)

    when (s0.canPeek.inv .&. s1.canPeek) do
      s1.consume
      enq queue (s1.peek)

  return (queue.toStream)

-- Merge a list of streams
mergeStreams :: Bits a => [Stream a] -> Module (Stream a)
mergeStreams = treeM1 mergeTwoStreams
