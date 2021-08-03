(ns galactica.nrepl.server.spec
  #?(:cljs (:require-macros [galactica.nrepl.server.spec]))
  (:require
   [clojure.spec.alpha :as s]))


(s/def ::middleware (s/coll-of some?))
(s/def ::host string?)
(s/def ::port int?)