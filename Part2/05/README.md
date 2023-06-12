# DevOps with Docker
## 2.5

Commands used in this exercise:
```
git clone https://github.com/docker-hy/material-applications && cd material-applications/scaling-exercise/

docker compose up -d --scale compute=10
[+] Building 0.0s (0/0)
[+] Running 13/13
 ✔ Network scaling-exercise_default       Created                                                0.2s
 ✔ Container scaling-exercise-compute-2   Started                                                7.8s
 ✔ Container scaling-exercise-compute-6   Started                                                9.3s
 ✔ Container calculator                   Started                                                4.0s
 ✔ Container scaling-exercise-compute-1   Started                                               11.8s
 ✔ Container scaling-exercise-compute-7   Started                                                8.6s
 ✔ Container scaling-exercise-compute-8   Started                                                7.0s
 ✔ Container scaling-exercise-compute-9   Started                                               11.0s
 ✔ Container scaling-exercise-compute-10  Started                                                5.3s
 ✔ Container scaling-exercise-compute-3   Started                                               10.2s
 ✔ Container load-balancer                Started                                                4.2s
 ✔ Container scaling-exercise-compute-4   Started                                                4.4s
 ✔ Container scaling-exercise-compute-5   Started                                                6.2s
```

Cleanup:
```
docker compose down
[+] Running 13/13
 ✔ Container load-balancer                Removed                                                3.2s
 ✔ Container calculator                   Removed                                                3.8s
 ✔ Container scaling-exercise-compute-1   Removed                                                3.6s
 ✔ Container scaling-exercise-compute-2   Removed                                                3.7s
 ✔ Container scaling-exercise-compute-10  Removed                                                3.5s
 ✔ Container scaling-exercise-compute-8   Removed                                                3.9s
 ✔ Container scaling-exercise-compute-4   Removed                                                3.6s
 ✔ Container scaling-exercise-compute-5   Removed                                                3.5s
 ✔ Container scaling-exercise-compute-6   Removed                                                3.7s
 ✔ Container scaling-exercise-compute-7   Removed                                                3.9s
 ✔ Container scaling-exercise-compute-3   Removed                                                3.7s
 ✔ Container scaling-exercise-compute-9   Removed                                                2.9s
 ✔ Network scaling-exercise_default       Removed                                                0.2s
```

