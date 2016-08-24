=====================
puppet-module-builder
=====================

This script builds Puppet modules directly from a Git repo. This helps to
create clean builds of modules.


Usage
=====

To build a module, run::

  $ build.sh <repo-url> <ref>

The script will then build the module and copy it to the "pkg/" directory.
