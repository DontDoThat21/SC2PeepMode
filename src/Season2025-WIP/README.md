# Season 2025 Work in Progress

This directory contains Season 2025 ladder maps that are being prepared for PeepMode.

## Workflow

1. **Download base maps** from Battle.net using SC2 Editor
2. **Apply PeepMode components** and test functionality  
3. **Save maps here** for initial testing and validation
4. **Move to ../Published/** when fully tested and ready

## Expected Files

When complete, this directory should contain:

- `PeepMode - Incorporeal.SC2Map`
- `PeepMode - Last Fantasy.SC2Map`
- `PeepMode - Ley Lines.SC2Map`
- `PeepMode - Magannatha LE.SC2Map`
- `PeepMode - Persephone.SC2Map`
- `PeepMode - Pylon LE.SC2Map`
- `PeepMode - Tokamak.SC2Map`
- `PeepMode - Torches.SC2Map`
- `PeepMode - Ultralove.SC2Map`

## Testing Checklist

For each map, verify:

- [ ] PeepMode triggers function correctly
- [ ] Observer UI displays properly
- [ ] Betting system works
- [ ] Store functionality is accessible
- [ ] Round-robin tournament logic works
- [ ] Map loads without errors
- [ ] Performance is acceptable

## Moving to Published

Once a map passes all tests:

1. Move the `.SC2Map` file from this directory to `../Published/`
2. Update the helper script status by running `../../season-2025-helper.sh`
3. Test once more in the Published directory
4. Update any documentation as needed

## Notes

- Keep original map names without version numbers in filenames
- Ensure consistent naming with "PeepMode - " prefix
- Test with multiple players when possible
- Document any issues or special considerations for each map