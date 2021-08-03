#!/bin/bash

repl(){
  clj \
    -X:repl deps-repl.core/process \
    :main-ns galactica.main \
    :port 7788 \
    :host '"0.0.0.0"' \
    :repl? true \
    :nrepl? false
}

main(){
  clojure \
    -J-Dclojure.core.async.pool-size=1 \
    -J-Dclojure.compiler.direct-linking=false \
    -M -m galactica.main
}

uberjar(){
  clojure \
    -X:uberjar hf.depstar/uberjar \
    :aot true \
    :jar out/galactica.standalone.jar \
    :verbose false \
    :main-class galactica.main
  mkdir -p out/jpackage-input
  mv out/galactica.standalone.jar out/jpackage-input/
}



"$@"