#!/usr/bin/env bash
mvn clean jdepend:generate
mvn clean test findbugs:findbugs pmd:pmd checkstyle:checkstyle javancss:report jdepend:generate cobertura:cobertura