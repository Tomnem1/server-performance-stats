# Server Performance Stats

A bash script that reports basic performance stats for any Linux server:
total CPU usage, memory usage, disk usage, and the top 5 processes by CPU
and by memory.

Written as part of the [roadmap.sh DevOps
roadmap](https://roadmap.sh/projects/server-stats) "Server Performance
Stats" project.

## Usage

```bash
chmod +x server-stats.sh
./server-stats.sh
```

## Example Output

```
#### TOTAL CPU USAGE ####
Total CPU Usage: 4.2%

#### MEMORY USAGE ####
Free: 5.87Gi  Used: 1.83Gi  Usage: 23.78%

#### DISK USAGE ####
Used: 12G Free: 226G Usage: 6%

#### TOP 5 PROCESSES BY CPU USAGE ####
  PID %CPU %MEM COMMAND
 1421  8.3  2.1 nginx
 2087  5.6  4.3 mysqld
  998  3.1  1.2 sshd
 1755  2.4  0.9 python3
  742  1.8  0.5 systemd

#### TOP 5 PROCESSES BY MEMORY USAGE ####
  PID %CPU %MEM COMMAND
 2087  5.6  4.3 mysqld
 1421  8.3  2.1 nginx
 1755  2.4  0.9 python3
  998  3.1  1.2 sshd
  742  1.8  0.5 systemd
```

## Requirements

- `bash`
- Standard Linux tools: `top`, `free`, `df`, `ps`, `awk`, `grep`
