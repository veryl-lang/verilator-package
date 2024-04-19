mkdir -p temp
cp $1 temp
pushd temp
unzip $1
tar zvxf *.gz
mkdir -p dist
cp repo/LICENSE dist
cp repo/README.rst dist
cp -r repo/bin dist
cp -r repo/include dist
cp repo/*.cmake dist
rm dist/bin/verilator_bin_dbg
pushd dist
zip -r ../../verilator.zip .
popd
popd
rm -rf temp
