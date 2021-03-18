#!/usr/bin/env bash
echo 'Its working'
echo $BUILD_DIR
echo $TARGET_DIR

git config user.email $GITHUB_ACTOR@bots.github.com
git config user.name $GITHUB_ACTOR

cd $GITHUB_WORKSPACE
yarn
yarn build
mv $BUILD_DIR $TARGET_DIR
git add $TARGET_DIR
git commit -m "Deploy 🦾"
git push
