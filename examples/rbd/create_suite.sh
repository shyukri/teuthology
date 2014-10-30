#!/bin/sh
teuthology-schedule -v fsx.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v c_api_tests.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v librbd_python_tests.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v rbd_copy.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v rbd_lock_fence.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v rbd-vs-unmanaged-snaps.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v read-flags-writethrough.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v cls_rbd.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v qemu-iotests-writethrough.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v rbd_imp_exp.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v rbd_run_cli_tests.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v read-flags-writeback.yaml common.yaml -n teuthology-rbd-all -d 'execute rbd tests' -w my_type
teuthology-schedule -v -n teuthology-rbd-all -d 'execute rbd tests' -w my_type --last-in-suite --email ceph-bugs@suse.de
