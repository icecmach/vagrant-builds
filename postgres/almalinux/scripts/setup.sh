# Install postgres
dnf install -y postgresql-server.x86_64

PGHOME=$(echo ~postgres)
# Create script directory
mkdir -p $PGHOME/scripts
chown postgres:postgres $PGHOME/scripts

# Initialize db
su - postgres -c 'pg_ctl -D $HOME/data initdb'

# Prepare postgres user environment
cp /vagrant/scripts/setEnv.sh $PGHOME/scripts
cp -f -p /vagrant/scripts/.bash_profile $PGHOME

# Set permissions
chown -R postgres:postgres $PGHOME
chmod u+x $PGHOME/scripts/*.sh

# Create systemd service
cp /vagrant/scripts/postgresql.service /etc/systemd/system/
systemctl daemon-reload
systemctl start postgresql.service
systemctl enable postgresql.service
