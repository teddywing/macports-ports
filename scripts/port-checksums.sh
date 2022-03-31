#!/bin/sh

# port-checksums.sh
#
# Output MacPorts Portfile checksums for a file.
#
# Example:
# checksums           rmd160  c799daf7113027e02eb2e931d61a1936323ec044 \
#                     sha256  f28dbeef1de974fa6c9e07ba78179a1dcf75fe5c1342cabde135e7d928045aee \
#                     size    23341

# TODO: --append argument for `checksums-append`
# TODO: Help output
# TODO: Allow reading from standard input
# TODO: support multiple file inputs

file="$1"

rmd160="$(openssl dgst -sha256 "$file" | cut -d ' ' -f 2)"
sha256="$(shasum -a 256 "$file" | cut -d ' ' -f 1)"
size="$(wc -c "$file" | awk '{ print $1 }')"

cat <<EOF
checksums           rmd160  ${rmd160} \\
                    sha256  ${sha256} \\
                    size    ${size}
EOF
