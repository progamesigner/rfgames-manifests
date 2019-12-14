FROM alpine

COPY --from=progamesigner/rfgames-backend-server:1.0 /build/bin/apply /usr/local/bin/

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/apply"]
