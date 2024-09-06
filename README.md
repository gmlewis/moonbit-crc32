# gmlewis/crc32
[![check](https://github.com/gmlewis/moonbit-crc32/actions/workflows/check.yml/badge.svg)](https://github.com/gmlewis/moonbit-crc32/actions/workflows/check.yml)

This is a simple crc32 hash algorithm based on the Go Rosetta Stone implementation found here:
https://rosettacode.org/wiki/CRC-32
which has the copyright notice:

```
Content is available under GNU Free Document License 1.3 unless otherwise noted.
```

## Status

The code has been updated to support compiler:

```bash
$ moon version --all
moon 0.1.20240902 (23dcb39 2024-09-02) ~/.moon/bin/moon
moonc v0.1.20240902+a8d98d78a ~/.moon/bin/moonc
moonrun 0.1.20240902 (23dcb39 2024-09-02) ~/.moon/bin/moonrun
```

Use `moonup` to manage `moon` compiler versions:
https://github.com/chawyehsu/moonup