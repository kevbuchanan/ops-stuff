(ns data-feed.core
  (:require [clojure.tools.logging :as log]))

(defn ingest
  [data]
  (log/info "Got some data")
  :done)
