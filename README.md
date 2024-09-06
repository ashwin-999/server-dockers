# 🧠 ML Workspace

### 🛠️ Commands

- Start containers:
  ```
  make docker-up
  ```

- Rebuild and start containers:
  ```
  make docker-up-rebuild
  ```

- Enter ML workspace container:
  ```
  make docker-enter-container
  ```

- Stop and remove containers:
  ```
  make docker-down
  ```

## 🚀 Development Workflow

1. 🏁 Start the environment: `make docker-up`
2. 🚪 Enter the container: `make docker-enter-container`
3. 💻 Develop and run ML projects inside the container
4. 🚶‍♂️ Exit the container when done
5. 🛑 Shut down: `make docker-down`