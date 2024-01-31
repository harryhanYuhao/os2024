# Set up for dice Machine UoE

The scripts in this repo are designed to run on dice machine. See [tips](#access-dice) on vpn and access to dice machine.

To set up environment, clone the repo and run

```bash
source init.bash
```

Or use this oneliner: 

```bash
git clone https://github.com/harryhanYuhao/os2024.git; cd os2024; source init.bash
```

Now you should have a better terminal prompt and you can run:

```bash
killqemu # kill the running qemu. Does not work if more than one is running
runqemu # detects debian.qcow2 and bzImage file in current directory and run qemu simulation. 
cddisk # go to your /disk/scratch folder
c # clear the terminal
ls # colored ls
findbz # find bzImage nested in current directory
finddeb # find debian.qcow2 nested in current directory
```

## Command Summary

### `killqemu`

When qemu crash, try `Ctrl a, x` first. It send SIGTERM to qemu.

If that does not work, you can find which process is running your qemu by `ps au | grep qemu` and issue `kill <pid>`.
You will probably see a huge list as many people may be running it at the same time.

`killqemu` command finds which process you are running qemu on and kills it.

###  `runqemu`

runqemu detects the rootfs and kernel image and run simulation. It only expects one rootfs and kernel image to exist. 

```
runqemu # run the simulation 
runqemu -g # run simulation, opening port for gdb. Auto selects an available port
runqemu <port-number> # try to use the provided port number
runqemu -h # for help
```

## Access Dice

### VPN

To access dice on home network, you need UoE's vpn [service](https://www.ed.ac.uk/information-services/computing/desktop-personal/vpn). After registering for vpn service, you need to set up a vpn client. 

You can use closed source fortivpn client that works not very well but gives you a gui.  Or you can use `openfortivpn cli`.

```bash
sudo openfortivpn remote.net.ed.ac.uk:8443 -u <UUN>
```

It will prompt you to enter you vpn password that is **different** from your university account's password.

### ssh 

After connecting to vpn you can use ssh to connect to your dice machine:

```
ssh <uun>@student.ssh.inf.ed.ac.uk
```

Now you shall enter your unversity account's password.

If you find typing that huge string of url is too tedious, you can append the following lines to your `~/.ssh/config` (create one if not exist).

```
Host uoe
	Hostname student.ssh.inf.ed.ac.uk
	User <uun>
	SetEnv TERM=xterm
```

Now you can use `ssh uoe` to connect to dice.
