FROM node:10.14.1
RUN mkdir -p /src/sportsstore
COPY build /src/sportsstore/build
COPY authMiddleware.js /src/sportsstore/
COPY productionData.json /src/sportsstore/
COPY server.js /src/sportsstore/
COPY deploy-package.json /src/sportsstore/package.json
COPY serverQueriesSchema.graphql /src/sportsstore/
COPY serverQueriesResolver.js /src/sportsstore/
COPY serverMutationsSchema.graphql /src/sportsstore/
COPY serverMutationsResolver.js /src/sportsstore/
WORKDIR /src/sportsstore
RUN echo 'package-lock=false' >> .npmrc
RUN npm install
EXPOSE 80
CMD ["node", "server.js", "./productionData.json", "80"]