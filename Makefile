.PHONY: build-arm64

## build-arm64: build the registry-admin binary for linux/arm64 and place it at runtime/bin/linux/arm64/registry-admin
build-arm64:
	mkdir -p runtime/bin/linux/arm64
	docker buildx build \
		--platform linux/arm64 \
		-f Dockerfile.arm64 \
		--target export \
		--output type=local,dest=. \
		.
