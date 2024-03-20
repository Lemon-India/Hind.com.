.class public Lf/e;
.super Lf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a<",
        "Lf/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lb/a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lf/d;->c:Lf/d;

    invoke-direct {p0, v0, p1}, Lf/a;-><init>(Lf/d;Ljava/lang/String;)V

    iput-object p2, p0, Lf/e;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lb/a;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData;
    .locals 6

    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData;->newBuilder()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lb/a;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;->setTimestamp(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lb/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lb/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension;->newBuilder()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension$Builder;->setValue(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension$Builder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;->addDimensions(Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Dimension$Builder;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/a;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure;->newBuilder()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure$Builder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure$Builder;->setValue(D)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;->addMeasures(Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Measure$Builder;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData$Builder;->build()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/net/URLConnection;)V
    .locals 2

    const-string v0, "Content-Type"

    const-string v1, "application/x-protobuf"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d()Lf/a;
    .locals 1

    invoke-virtual {p0}, Lf/e;->g()Lf/e;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lf/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a;

    invoke-virtual {v2}, Lb/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;

    if-nez v4, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric;->newBuilder()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;->setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v2}, Lf/e;->a(Lb/a;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;->addData(Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$MetricData;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload;->newBuilder()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Builder;->addMetrics(Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric$Builder;)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Builder;->build()Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lf/e;
    .locals 0

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf/e;->f:Ljava/util/List;

    return-object v0
.end method
