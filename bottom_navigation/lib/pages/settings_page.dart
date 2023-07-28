import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPage createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  bool darkmodeState = false;
  bool wifiState = true;
  bool bluetoothState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfff6f6f6),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView(
            key: const PageStorageKey('settings-asdfkjlkajdsf'),
            children: [
              _SingleSection(title: "General", children: [
                const _CustomListTile(
                  title: "About Phone",
                  icon: CupertinoIcons.device_phone_portrait,
                ),
                _CustomListTile(
                  title: "Dark Mode",
                  icon: CupertinoIcons.moon,
                  trailing: CupertinoSwitch(
                      value: darkmodeState,
                      onChanged: (newValue) {
                        setState(() {
                          darkmodeState = newValue;
                        });
                      }),
                ),
                const _CustomListTile(
                  title: "System Apps Updater",
                  icon: CupertinoIcons.cloud_download,
                ),
                const _CustomListTile(
                  title: "Security Status",
                  icon: CupertinoIcons.lock_shield,
                ),
              ]),
              _SingleSection(
                title: "Network",
                children: [
                  const _CustomListTile(
                    title: "SIM Cards and Networks",
                    icon: Icons.sd_card_outlined,
                  ),
                  _CustomListTile(
                    title: "Wi-Fi",
                    icon: CupertinoIcons.wifi,
                    trailing: CupertinoSwitch(
                      value: wifiState,
                      onChanged: (newValue) {
                        setState(() {
                          wifiState = newValue;
                        });
                      },
                    ),
                  ),
                  _CustomListTile(
                    title: "Bluetooth",
                    icon: CupertinoIcons.bluetooth,
                    trailing: CupertinoSwitch(
                      value: bluetoothState,
                      onChanged: (newValue) {
                        setState(() {
                          bluetoothState = newValue;
                        });
                      },
                    ),
                  ),
                  const _CustomListTile(
                    title: "VPN",
                    icon: CupertinoIcons.desktopcomputer,
                  ),
                ],
              ),
              const _SingleSection(
                title: "Privacy and Security",
                children: [
                  _CustomListTile(
                    title: "Multiple Users",
                    icon: CupertinoIcons.person_2,
                  ),
                  _CustomListTile(
                    title: "Lock Screen",
                    icon: CupertinoIcons.lock,
                  ),
                  _CustomListTile(
                    title: "Display",
                    icon: CupertinoIcons.brightness,
                  ),
                  _CustomListTile(
                    title: "Sound and Vibration",
                    icon: CupertinoIcons.speaker_2,
                  ),
                  _CustomListTile(
                    title: "Themes",
                    icon: CupertinoIcons.paintbrush,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;

  const _CustomListTile(
      {Key? key, required this.title, required this.icon, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing ?? const Icon(CupertinoIcons.forward, size: 18),
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const _SingleSection({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}
