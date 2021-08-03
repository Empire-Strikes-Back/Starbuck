(ns galactica.cljs-self-hosting.protocols)

(defprotocol Release
  (release* [_]))

(defprotocol Compiler
  (init* [_ opts])
  (eval-data* [_ opts])
  (eval-str* [_ opts])
  (compile-js-str* [_ opts]))


