#!/bin/bash

if [ -f "${RBENV_ROOT}/default-gems" ]; then

	# Read gem names and versions from $RBENV_ROOT/default-gems.
	while IFS=" " read -r -a line; do

		# Skip empty lines.
		[ "${#line[@]}" -gt 0 ] || continue

		# Skip comment lines that begin with `#`.
		[ "${line[0]:0:1}" != "#" ] || continue

		gem_name="${line[0]}"
		gem_version="${line[1]}"

		if [ "$gem_version" == "--pre" ]; then
			args=( --pre )
		elif [ -n "$gem_version" ]; then
			args=( --version "$gem_version" )
		else
			args=()
		fi

		# Invoke `gem install` in the just-installed Ruby. Point its
		# stdin to /dev/null or else it'll read from our default-gems
		# file.
		gem_prg="$RBENV_ROOT/shims/gem"
		RBENV_VERSION="$VERSION_NAME" "$gem_prg" install "$gem_name" "${args[@]}" < /dev/null || {
		echo "rbenv: error installing gem \`$gem_name'"
	} >&2

done < "${RBENV_ROOT}/default-gems"
fi

