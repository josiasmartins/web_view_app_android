#!/bin/bash

function genetate_build() {
  echo "comecando o build do apk"
  ./gradlew assemble
  echo "finalizado o build do android app"
}

function move_apk() {
  echo "criando a pasta apks"
  mkdir -p apks
  mv ./app/build/outputs/apk/app-release-unsigned.apk ./apks
  echo "movido o apk para a pasta apks"
}

function addFilesAndCommit() {
  git add apks/*
  git status
  git commit -m "feature(script): update apks"
}

genetate_build
move_apk

