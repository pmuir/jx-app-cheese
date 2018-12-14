FROM scratch
EXPOSE 8080
ENTRYPOINT ["/jx-app-cheese-static"]
COPY ./bin/ /
CMD mkdir -p /static
COPY ./static /static
