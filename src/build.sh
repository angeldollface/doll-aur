
# Making the folders.
cd ..
mkdir -p output
mkdir -p output/x86_64

# Building the packages.
for dir in $(ls -d ./pkgs/*); do
    (cd $dir && makepkg && mv *.tar.zst ../../output/x86_64)
done

# Generating the repository information.
cd output
cd x86_64
pwd
repo-add doll-aur.db.tar.gz *.pkg.tar.zst

# Deleting the corrupted repository information.
rm -rf doll-aur.db
rm -rf doll-aur.files

# Making the cleaned repository information.
mv doll-aur.db.tar.gz doll-aur.db
mv doll-aur.files.tar.gz doll-aur.files