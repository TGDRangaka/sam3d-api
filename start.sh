cat > /workspace/start.sh << 'EOF'
#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate sam3d-objects
cd /workspace/sam3d-api
git pull
uvicorn api:app --host 0.0.0.0 --port 8000 --log-level info
EOF

chmod +x /workspace/start.sh