#!/ffp/bin/sh
# ==============================================================================
# NCurses Installation Script
# Performs post-installation tasks when package is installed
# ==============================================================================

# Update library cache if ldconfig is available
if [ -x /ffp/sbin/ldconfig ]; then
    echo "Updating library cache..."
    /ffp/sbin/ldconfig
fi

# Create terminfo database directory with proper permissions
if [ ! -d /ffp/share/terminfo ]; then
    mkdir -p /ffp/share/terminfo
    chmod 755 /ffp/share/terminfo
fi

# Set TERMINFO environment variable hint for users
if [ ! -f /ffp/etc/profile.d/ncurses.sh ]; then
    mkdir -p /ffp/etc/profile.d
    cat > /ffp/etc/profile.d/ncurses.sh << 'EOF'
# NCurses terminfo database location
export TERMINFO="/ffp/share/terminfo"
EOF
    chmod 755 /ffp/etc/profile.d/ncurses.sh
fi

echo "NCurses installation completed."
echo ""
echo "Note: The TERMINFO environment variable has been set to /ffp/share/terminfo"
echo "You may need to source /ffp/etc/profile or restart your shell to use it."
