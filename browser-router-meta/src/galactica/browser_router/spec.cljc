(ns galactica.browser-router.spec
  #?(:cljs (:require-macros [galactica.browser-router.spec]))
  (:require
   [clojure.spec.alpha :as s]))

(s/def ::routes any?)

(s/def ::url string?)
(s/def ::route-params any?)
(s/def ::route-key keyword?)

(s/def ::history-token string?)