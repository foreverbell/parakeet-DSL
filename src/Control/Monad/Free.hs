module Control.Monad.Free ( 
  Free
, liftF
, runFree
, runFreeM
) where

import Control.Monad (liftM, ap)
import Data.Functor.Identity (Identity (..), runIdentity)

data Free f a = Roll (f (Free f a)) | Pure a

instance Functor f => Functor (Free f) where
  fmap = liftM

instance Functor f => Applicative (Free f) where
  pure = return
  (<*>) = ap

instance Functor f => Monad (Free f) where
  return = Pure
  Pure m >>= k = k m
  Roll m >>= k = Roll $ fmap (>>= k) m

liftF :: (Functor f) => f a -> Free f a
liftF = Roll . (fmap Pure)

runFree :: (Functor f) => (f (Free f a) -> Free f a) -> Free f a -> a
runFree run = runIdentity . runFreeM (Identity . run)

runFreeM :: (Functor f, Monad m) => (f (Free f a) -> m (Free f a)) -> Free f a -> m a
runFreeM run (Roll m) = run m >>= runFreeM run
runFreeM _   (Pure m) = return m
