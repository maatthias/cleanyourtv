# CleanYourTV - Sony BRAVIA 4K VH21 (KD-65X85K)

## What was done
- Backed up packages, disabled packages, getprop, and settings to `backup/`
- Disabled bloatware using `tools/disable.sh` with custom debloat list
- Built and installed CleanYourTV launcher (com.gathin.tvhome) with custom dock
- Set launcher as default home, disabled stock Google TV launcher and setupwraith
- Dock configured with: SmartTube, Jellyfin, YouTube TV, Netflix, Spotify

## Dock configuration
To change dock apps or order, edit `launcher/app/src/main/res/values/config.xml` and rebuild with `./build-and-install-custom.sh`

Current dock (5 slots):
1. org.smarttube.stable (SmartTube)
2. org.jellyfin.androidtv (Jellyfin)
3. com.google.android.youtube.tv (YouTube TV)
4. com.netflix.ninja (Netflix)
5. com.spotify.tv.android (Spotify)

## Re-enabling apps
If you need to re-enable any disabled app:
```bash
TV_HOST=192.168.0.221 tools/venv/bin/python -I tools/tv.py "pm enable --user 0 <package>"
```

Or use the restore script:
```bash
TV_HOST=192.168.0.221 ./restore.sh
```

## Files
- `backup/` - Full backups before changes
- `backup/shots/` - Screenshots taken during process
- `work/` - Working files
- `/tmp/sony-debloat-custom.txt` - Custom debloat list used
- `restore.sh` - Restore script
- `build-and-install-custom.sh` - Rebuild and reinstall launcher

## Notes
- setupwraith was disabled (it was blocking launcher takeover). It was re-enabled logic in restore script.
- Some packages like com.qterics.da.product were left enabled (input-driver check couldn't verify)
- Network ADB on port 5555 is still open. Remember to disable USB/Network debugging when done.
