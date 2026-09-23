# Password Generator

A small Windows desktop app that generates random passwords, written in **Free Pascal** with the
**Lazarus** IDE (LCL).

## Features

- Password length from 1 to 100 characters, chosen with a slider (the password updates as you move it).
- Choose which character types to use: **Lower** case, **Upper** case, **Number** and **Symbol** (`& " ( - _ = + * / . ! : ; , ? #`).
- Refresh button to generate a new password with the same settings.
- The random generator is seeded at start-up, so every launch gives different passwords.
- A clear message if no character type is ticked.

## How to build

1. Install [Lazarus](https://www.lazarus-ide.org/) (it includes the Free Pascal compiler).
2. Clone the repository:

   ```bash
   git clone https://github.com/naniiic137/Password-Generator.git
   ```

3. Open `project1.lpi` in Lazarus.
4. Press **Run → Build** (Shift+F9) to create `project1.exe`, or **Run** (F9) to build and start it.

Command-line build (with Lazarus installed):

```bash
lazbuild project1.lpi
```

> **Note:** Source changes in this commit were not compiled on this machine. Please build in Lazarus to verify.

For a smaller executable, add a *Release* build mode in **Project → Project Options → Compiler Options**
with debug info turned off. The default debug build is about 25 MB.

## Download

Build output (`project1.exe`, `lib/`, `backup/`) is no longer stored in the repository. The plan is
to publish the Windows executable on the repository's **Releases** page.

## Project structure

```text
project1.lpi          # Lazarus project file (open this in Lazarus)
project1.lpr          # program entry point
unit1.pas             # main form logic: password generation and event handlers
unit1.lfm             # main form layout (controls, captions, positions)
project1.ico / .res   # application icon and resources
icons8-repeat-30.png  # refresh button icon
```

## Limitations

- Uses Free Pascal's standard `Random` generator, which is **not cryptographically secure**. Fine for learning; for real accounts, prefer a password manager.
- No "copy to clipboard" button yet (select the text and press Ctrl+C).
- Each ticked type widens the pool of characters, but a password isn't guaranteed to contain at least one character of every ticked type.
- Controls still have their default names (`CheckBox1`, `Edit1`, …).

## Credits

Refresh icon by [Icons8](https://icons8.com).

## License

© 2026 Hamza Ben Ismail. All rights reserved.
