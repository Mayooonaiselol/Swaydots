if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi

if [ "$(tty)" = "/dev/tty2" ]; then
	exec dbus-run-session river
fi
