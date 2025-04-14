#!/bin/bash
# Script: run_graphs.sh
# Description: For each graph file listed in the file_paths array, this script runs
# ./cc-async and ./cc-sync with the specified input graph and device.

# Define an array of graph files. Uncomment additional paths as needed.
file_paths=(
    "/raid/graphwork/IIIT-H/egr-single/europe_osm.egr"
    "/raid/graphwork/IIIT-H/egr-single/road_usa.egr"
    "/raid/graphwork/IIIT-H/egr-single/it-2004.egr"
    "/raid/graphwork/IIIT-H/egr-single/webbase-2001.egr"
    "/raid/graphwork/IIIT-H/egr-single/sk-2005.egr"
    "/raid/graphwork/IIIT-H/egr-single/com-Friendster.egr"
    "/raid/graphwork/IIIT-H/egr-single/GAP-twitter.egr"
    "/raid/graphwork/IIIT-H/egr-single/GAP-web.egr"
    "/raid/graphwork/IIIT-H/egr-single/GAP-urand.egr"
    "/raid/graphwork/IIIT-H/egr-single/GAP-kron.egr"
    "/raid/graphwork/IIIT-H/egr-single/AGATHA_2015.egr"
    # "/raid/graphwork/IIIT-H/egr-single/MOLIERE_2016.egr"
#     # "/raid/graphwork/IIIT-H/egr-single/gsh-2015.egr"
#     # "/raid/graphwork/IIIT-H/egr-single/clueweb12.egr"
)

# Iterate over each graph file path
for file in "${file_paths[@]}"; do
    # Check if the file exists before running the commands
    if [ -f "$file" ]; then
        echo "Processing graph file: $file"

        # Run cc-async
        echo "Running cc-async on $file ..."
        ./cc-async --input "$file" --device 2

        # Run cc-sync
        echo "Running cc-sync on $file ..."
        ./cc-sync --input "$file" --device 2
    else
        echo "Warning: File not found - $file"
    fi
done
