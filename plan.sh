# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/
pkg_name=packer
pkg_origin=qubitrenegade
pkg_version="1.2.3"
pkg_maintainer="QubitRenegade <qubitrenegade@gmail.com>"
pkg_license=("MPL-2")
pkg_source="https://releases.hashicorp.com/${pkg_name}/${pkg_version}/${pkg_name}_${pkg_version}_linux_amd64.zip"
pkg_filename=${pkg_name}-${pkg_version}_linux_amd64.zip
pkg_shasum="822fe76c2dfe699f187ef8c44537d10453a1545db620e40b345cf6991a690f7d"
pkg_deps=()
pkg_build_deps=(core/unzip)
pkg_bin_dirs=(bin)
pkg_description="Habitat plan for Packer; https://github.com/qubitrenegade/habitat-packer"
pkg_upstream_url="https://www.packer.io"

do_unpack() {
  cd "${HAB_CACHE_SRC_PATH}" || exit
  unzip ${pkg_filename} -d "${pkg_name}-${pkg_version}"
}

do_build() {
  return 0
}

do_install() {
  install -D packer "${pkg_prefix}/bin/packer"
}
