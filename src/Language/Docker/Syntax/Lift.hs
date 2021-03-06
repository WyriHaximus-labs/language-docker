{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TemplateHaskell #-}

module Language.Docker.Syntax.Lift where

import Data.Fixed (Fixed)
import Data.Time.Clock (DiffTime)
import Instances.TH.Lift () -- Defines Lift instances for ByteString and Text
import Language.Haskell.TH.Lift
import Language.Haskell.TH.Syntax ()

import Language.Docker.Syntax

deriveLift ''Fixed

deriveLift ''DiffTime

deriveLift ''Protocol

deriveLift ''Port

deriveLift ''Ports

deriveLift ''Registry

deriveLift ''Image

deriveLift ''ImageAlias

deriveLift ''Tag

deriveLift ''Digest

deriveLift ''BaseImage

deriveLift ''Arguments

deriveLift ''Instruction

deriveLift ''InstructionPos

deriveLift ''SourcePath

deriveLift ''TargetPath

deriveLift ''Chown

deriveLift ''CopySource

deriveLift ''CopyArgs

deriveLift ''AddArgs

deriveLift ''Duration

deriveLift ''Retries

deriveLift ''CheckArgs

deriveLift ''Check
