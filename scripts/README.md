<!--
 This file is Free Software under the Apache-2.0 License
 without warranty, see README.md and LICENSES/Apache-2.0.txt for details.

 SPDX-License-Identifier: Apache-2.0

 SPDX-FileCopyrightText: 2025 German Federal Office for Information Security (BSI) <https://www.bsi.bund.de>
 Software-Engineering: 2025 Intevation GmbH <https://intevation.de>
-->

Privatekey.asc is the private key used to sign all advisories within this repository.
When regenerating the signature for modified files, use this key. Since this key is publicly available,
everyone can use it so do not use it for any other purposes. The passphrase is `Passphrase`.

sign.sh will create .sha256, .sha512 and .asc files for all .json files in all subdirectories
using Privatekey.asc. It will fail to generate .asc files if Privatekey.asc has not been imported.

