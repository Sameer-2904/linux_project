# Linux Fundamentals – Tech Diary (Submission Guide)

## Steps
1. Create project dir and files:  
   ```bash
   mkdir linux_project && cd linux_project
   touch profile.txt commands.txt log.txt
   ```
2. Fill files (use `nano`/`vim`) with proper headings.
3. Append last 5 executed commands to `log.txt`:  
   ```bash
   fc -nl -5 >> log.txt
   ```
4. Merge into `tech_diary.txt`:  
   ```bash
   cat profile.txt commands.txt log.txt > tech_diary.txt
   ```
5. Add ASCII art or a motivational quote to `tech_diary.txt` (optional).
6. Zip all `.txt` files:  
   ```bash
   zip linux_project.zip *.txt
   ```
7. Push to GitHub (replace URL):  
   ```bash
   git init
   git add *.txt linux_project.zip
   git commit -m "Linux Tech Diary"
   git branch -M main
   git remote add origin https://github.com/<you>/<repo>.git
   git push -u origin main
   ```

## Checklist (tick before submitting)
- [ ] `profile.txt`, `commands.txt`, `log.txt` created and neatly formatted
- [ ] `tech_diary.txt` correctly merged from the three files
- [ ] Added ASCII art or quote
- [ ] `linux_project.zip` contains all `.txt` files
- [ ] Repo pushed and link ready to submit
- [ ] Deadline noted: 23 Aug 2025, 11:59pm (IST)
