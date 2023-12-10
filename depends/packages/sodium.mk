package=sodium
$(package)_version=1.0.18
$(package)_download_path=https://download.libsodium.org/libsodium/releases
$(package)_file_name=libsodium-$($(package)_version)-stable.tar.gz
$(package)_sha256_hash=4080b5bf724c622febdfda0e82ded8bd5b1b889afe4a39e49d13bc974d325a6d

define $(package)_set_vars
$(package)_config_opts+=--with-pic --disable-shared
$(package)_cflags=-fvisibility=hidden
$(package)_cflags_linux=-fPIC
$(package)_cflags_armv7l_linux+=-march=armv7-a
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef