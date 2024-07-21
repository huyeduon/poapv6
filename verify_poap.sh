chmod +x conf.FDO28060596
md5sum conf.FDO28060596 > conf.FDO28060596.md5
chmod +x conf.FDO28060596.md5
f=poap.py 
cat $f | sed '/^#md5sum/d' > $f.md5
sed -i "s/^#md5sum=.*/#md5sum=\"$(md5sum $f.md5 | sed 's/ .*//')\"/" $f
rm $f.md5