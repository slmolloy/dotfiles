function wake_on_lan_notebook {
    # Laptop eth0
    sudo etherwake ec:f4:bb:5f:ef:4c
    # Laptop wlan0
    sudo etherwake f8:16:54:61:db:a4
}

function wake_on_lan_desk {
    # Desktop eth0
    sudo etherwake 1c:87:2c:71:25:af
}
