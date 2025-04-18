CREATE TABLE IF NOT EXISTS geocluster_cluster (
    -- Relates a geocluster to all the feature clusters in it
    geocluster_id UUID NOT NULL,
    cluster_id UUID NOT NULL,
    CONSTRAINT fk_clusters FOREIGN KEY(cluster_id) REFERENCES cluster(id),
    CONSTRAINT fk_geoclusters FOREIGN KEY(geocluster_id) REFERENCES geocluster(id)
);