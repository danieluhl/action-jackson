#!/usr/bin/env bash
echo 'Its working'
echo $BUILD_DIR
echo $TARGET_DIR

cd $GITHUB_WORKSPACE
yarn
yarn build
mv $BUILD_DIR $TARGET_DIR
git add $TARGET_DIR
git commit -m "Deploy 🦾"
git push