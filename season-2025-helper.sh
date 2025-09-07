#!/bin/bash

# Season 2025 Map Update Helper Script
# This script provides guidance and validation for adding Season 2025 ladder maps

echo "=== PeepMode Season 2025 Map Update Helper ==="
echo ""

# Define the maps that need to be added
declare -a MAPS=(
    "Incorporeal"
    "Last Fantasy"
    "Ley Lines"
    "Magannatha LE"
    "Persephone"
    "Pylon LE"
    "Tokamak"
    "Torches"
    "Ultralove"
)

echo "Maps to be added for Season 2025:"
echo "================================="

for i in "${!MAPS[@]}"; do
    map_name="${MAPS[$i]}"
    expected_filename="PeepMode - ${map_name}.SC2Map"
    target_path="src/Published/${expected_filename}"
    wip_path="src/Season2025-WIP/${expected_filename}"
    
    echo "$(($i + 1)). ${map_name}"
    echo "   Expected filename: ${expected_filename}"
    echo "   Target location: ${target_path}"
    echo "   WIP location: ${wip_path}"
    
    # Check if files exist
    if [ -f "${target_path}" ]; then
        echo "   Status: ✅ COMPLETED (in Published)"
    elif [ -f "${wip_path}" ]; then
        echo "   Status: 🚧 IN PROGRESS (in WIP)"
    else
        echo "   Status: ❌ NOT STARTED"
    fi
    echo ""
done

echo "Instructions:"
echo "============="
echo "1. Open StarCraft 2 Editor"
echo "2. For each map above:"
echo "   a. File → Open → Battle.net"
echo "   b. Search for the map name"
echo "   c. Download and apply PeepMode components"
echo "   d. Save as 'PeepMode - [Map Name].SC2Map'"
echo "   e. Place in src/Season2025-WIP/ for testing"
echo "   f. After testing, move to src/Published/"
echo ""
echo "3. Test each map thoroughly"
echo "4. When all maps are ready, commit and publish"

# Check current status
echo "Current Status Summary:"
echo "======================"
completed=0
in_progress=0
not_started=0

for map_name in "${MAPS[@]}"; do
    expected_filename="PeepMode - ${map_name}.SC2Map"
    target_path="src/Published/${expected_filename}"
    wip_path="src/Season2025-WIP/${expected_filename}"
    
    if [ -f "${target_path}" ]; then
        ((completed++))
    elif [ -f "${wip_path}" ]; then
        ((in_progress++))
    else
        ((not_started++))
    fi
done

echo "✅ Completed: ${completed}/9"
echo "🚧 In Progress: ${in_progress}/9"
echo "❌ Not Started: ${not_started}/9"

if [ $completed -eq 9 ]; then
    echo ""
    echo "🎉 All Season 2025 maps have been completed!"
    echo "Ready to commit and publish to arcade."
fi