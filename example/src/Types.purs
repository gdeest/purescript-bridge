-- File auto generated by purescript-bridge! --
module Types where

import Data.Argonaut.Aeson.Decode.Generic (genericDecodeAeson)
import Data.Argonaut.Aeson.Encode.Generic (genericEncodeAeson)
import Data.Argonaut.Aeson.Options as Argonaut
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Generic.Rep (class Generic)
import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Foreign.Class (class Decode, class Encode)
import Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Foreign.Object (Object)
import Prim (Array, Int, String)
import Type.Proxy (Proxy(Proxy))

import Prelude

newtype Baz =
    Baz {
      _bazMessage :: String
    }

instance encodeBaz :: Encode Baz where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = false , unwrapSingleArguments = false }
instance decodeBaz :: Decode Baz where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = false , unwrapSingleArguments = false }
instance encodeJsonBaz :: EncodeJson Baz where
  encodeJson = genericEncodeAeson Argonaut.defaultOptions
instance decodeJsonBaz :: DecodeJson Baz where
  decodeJson = genericDecodeAeson Argonaut.defaultOptions
derive instance genericBaz :: Generic Baz _
derive instance newtypeBaz :: Newtype Baz _

--------------------------------------------------------------------------------
_Baz :: Iso' Baz { _bazMessage :: String}
_Baz = _Newtype

bazMessage :: Lens' Baz String
bazMessage = _Newtype <<< prop (Proxy :: Proxy "_bazMessage")

--------------------------------------------------------------------------------
newtype Foo =
    Foo {
      _fooMessage :: String
    , _fooNumber :: Int
    , _fooList :: Array Int
    , _fooMap :: Object Int
    , _fooBaz :: Baz
    }

instance encodeFoo :: Encode Foo where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = false , unwrapSingleArguments = false }
instance decodeFoo :: Decode Foo where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = false , unwrapSingleArguments = false }
instance encodeJsonFoo :: EncodeJson Foo where
  encodeJson = genericEncodeAeson Argonaut.defaultOptions
instance decodeJsonFoo :: DecodeJson Foo where
  decodeJson = genericDecodeAeson Argonaut.defaultOptions
derive instance genericFoo :: Generic Foo _
derive instance newtypeFoo :: Newtype Foo _

--------------------------------------------------------------------------------
_Foo :: Iso' Foo { _fooMessage :: String, _fooNumber :: Int, _fooList :: Array Int, _fooMap :: Object Int, _fooBaz :: Baz}
_Foo = _Newtype

fooMessage :: Lens' Foo String
fooMessage = _Newtype <<< prop (Proxy :: Proxy "_fooMessage")

fooNumber :: Lens' Foo Int
fooNumber = _Newtype <<< prop (Proxy :: Proxy "_fooNumber")

fooList :: Lens' Foo (Array Int)
fooList = _Newtype <<< prop (Proxy :: Proxy "_fooList")

fooMap :: Lens' Foo (Object Int)
fooMap = _Newtype <<< prop (Proxy :: Proxy "_fooMap")

fooBaz :: Lens' Foo Baz
fooBaz = _Newtype <<< prop (Proxy :: Proxy "_fooBaz")

--------------------------------------------------------------------------------
