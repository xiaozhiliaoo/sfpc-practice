#!/usr/bin/env bash
mvn clean test cobertura:cobertura -pl ../cache
mvn clean test findbugs:findbugs -pl ../cache
mvn clean test spotbugs:spotbugs -pl ../cache
mvn clean test javadoc:javadoc -pl ../cache
mvn clean install -Dmaven.test.skip=true
mvn clean test findbugs:findbugs  -pl ../cache -am
mvn clean install cobertura:cobertura  -Dmaven.test.skip=true -pl  ../cache -am