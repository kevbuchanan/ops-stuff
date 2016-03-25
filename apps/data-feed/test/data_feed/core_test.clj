(ns data-feed.core-test
  (:require [clojure.test :refer :all]
            [data-feed.core :refer :all]))

(deftest ingest-test
  (testing "ingests data"
    (is (= :done (ingest {:my :data})))))
