FROM rust:latest

RUN apt-get update; \
	apt-get install -y --no-install-recommends \
		libgtk-3-dev \
		; \
	rm -rf /var/lib/apt/lists/*; \
	rustup install nightly-x86_64-unknown-linux-gnu; \
    rustup component add rustfmt --toolchain nightly;
