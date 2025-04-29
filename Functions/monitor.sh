# Function to create a backup of a folder
create_backup() {
  local source_folder="$1"
  local backup_folder="$2"
  local timestamp=$(date +%Y%m%d_%H%M%S)
  local backup_name="${source_folder##*/}_backup_${timestamp}.tar.gz"

  if [ -z "$source_folder" ] || [ -z "$backup_folder" ]; then
    echo "Error: Please provide both source and backup folder paths."
    echo "Usage: create_backup <source_folder> <backup_folder>"
    return 1
  fi

  echo "--- Creating Backup ---"
  echo "Source: $source_folder"
  echo "Backup Destination: $backup_folder/$backup_name"

  mkdir -p "$backup_folder"
  tar -czvf "$backup_folder/$backup_name" "$source_folder"

  if [ $? -eq 0 ]; then
    echo "Backup created successfully!"
  else
    echo "Error: Failed to create backup."
  fi
}
create_backup;

# Function to list files modified in the last 24 hours
# list_recent_files() {
#   echo "--- Files Modified in the Last 24 Hours ---"
#   find . -type f -mtime -1 -print
# }
# list_recent_files;


# Function to display active network connections
# display_connections() {
#   echo "--- Active Network Connections ---"
#   netstat -tulnp
# }
# display_connections;

# check_updates() {
    
#     echo "Checking for system updates..."
#     sudo apt update && sudo apt list --upgradable
# }

# check_updates;