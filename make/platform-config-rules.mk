# -*- Makefile -*-
############################################################
# <bsn.cl fy=2013 v=onl>
# 
#        Copyright 2013, 2014 Big Switch Networks, Inc.       
# 
# Licensed under the Eclipse Public License, Version 1.0 (the
# "License"); you may not use this file except in compliance
# with the License. You may obtain a copy of the License at
# 
#        http://www.eclipse.org/legal/epl-v10.html
# 
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied. See the License for the specific
# language governing permissions and limitations under the
# License.
# 
# </bsn.cl>
############################################################
#
# This file is included by the debian/rules file for all
# platform-config packages.
#
############################################################

include $(ONL)/make/config.mk

DEB_DH_INSTALL_SOURCEDIR=debian/tmp
INSTALL_DIR=$(CURDIR)/$(DEB_DH_INSTALL_SOURCEDIR)

BASEDIR=/lib/platform-config

%:
	dh $@

build-arch:
	dh build-arch

clean:
	dh clean

override_dh_auto_install:
	mkdir -p $(INSTALL_DIR)$(BASEDIR)/
	cp -R ../../src $(INSTALL_DIR)$(BASEDIR)/$(PLATFORM_NAME)


