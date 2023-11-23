virt-install \
--name Backvm \
--vcpus=1 \
--ram=1024 \
--initrd-inject=preseed.cfg \
--location=/home/younes.aouini@Digital-Grenoble.local/Downloads/debian-testing-amd64-DVD-1.iso \
--extra-args="auto console=ttyS0,115200n8 serial" \
--graphics none \
--console pty,target_type=serial \
--extra-args="ks=file:/preseed.cfg" \
--network default,model=virtio \
--os-variant=debian12 \
--disk=pool=Documents,size=5,format=qcow2,bus=virtio

