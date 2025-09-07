# Season 2025 Ladder Maps Update

This document outlines the process for adding the Season 2025 ladder maps to PeepMode.

## Maps to Add

Based on [Liquipedia Ladder Maps](https://liquipedia.net/starcraft2/Maps/Ladder_Maps/Legacy_of_the_Void), the following maps need to be added for Season 2025:

1. **Incorporeal (2)** - PeepMode - Incorporeal.SC2Map
2. **Last Fantasy (3)** - PeepMode - Last Fantasy.SC2Map  
3. **Ley Lines (2)** - PeepMode - Ley Lines.SC2Map
4. **Magannatha LE (2)** - PeepMode - Magannatha LE.SC2Map
5. **Persephone (2)** - PeepMode - Persephone.SC2Map
6. **Pylon LE (2)** - PeepMode - Pylon LE.SC2Map
7. **Tokamak (2)** - PeepMode - Tokamak.SC2Map
8. **Torches (2)** - PeepMode - Torches.SC2Map
9. **Ultralove (2)** - PeepMode - Ultralove.SC2Map

## Process for Adding Maps

### Step 1: Download Maps from Battle.net

For each map listed above:

1. Open StarCraft 2 Editor
2. Go to **File → Open → Battle.net**
3. Search for the map name (e.g., "Incorporeal")
4. Download and open the map

### Step 2: Apply PeepMode Components

1. Import the PeepMode base components from `SC2Components.SC2Map/`
2. Apply the PeepMode trigger system and UI modifications
3. Import assets from `export/Assets/` as needed

### Step 3: Save with Proper Naming

1. Go to **File → Save As**
2. Save with the naming convention: `PeepMode - [Map Name].SC2Map`
3. Place the file in `src/Published/` directory

### Step 4: Test and Validate

1. Test the map in StarCraft 2 to ensure PeepMode functionality works correctly
2. Verify all PeepMode features (observer UI, betting, store, etc.)
3. Publish to Battle.net Arcade when ready

## Current Status

- [x] Branch `season-2025-update` created
- [x] Documentation created
- [ ] Download Incorporeal map
- [ ] Download Last Fantasy map  
- [ ] Download Ley Lines map
- [ ] Download Magannatha LE map
- [ ] Download Persephone map
- [ ] Download Pylon LE map
- [ ] Download Tokamak map
- [ ] Download Torches map
- [ ] Download Ultralove map
- [ ] Apply PeepMode components to all maps
- [ ] Test all maps
- [ ] Move to Published directory

## File Structure

New maps should follow the existing pattern in `src/Published/`:

```
src/Published/
├── PeepMode - Incorporeal.SC2Map
├── PeepMode - Last Fantasy.SC2Map
├── PeepMode - Ley Lines.SC2Map
├── PeepMode - Magannatha LE.SC2Map
├── PeepMode - Persephone.SC2Map
├── PeepMode - Pylon LE.SC2Map
├── PeepMode - Tokamak.SC2Map
├── PeepMode - Torches.SC2Map
└── PeepMode - Ultralove.SC2Map
```

## Notes

- The numbers in parentheses (e.g., "(2)") in the original list likely refer to the number of players or some other map characteristic, but should not be included in the filename
- Ensure consistency with existing PeepMode map naming conventions
- Maps should be tested thoroughly before publishing to arcade