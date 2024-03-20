.class public Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lorg/json/JSONObject;

.field public final f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lb/a;->b:J

    iput-object p4, p0, Lb/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lb/a;->d:Ljava/lang/String;

    iput-object p6, p0, Lb/a;->e:Lorg/json/JSONObject;

    iput-object p7, p0, Lb/a;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/analytics/entity/Event;)V
    .locals 9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/bidmachine/analytics/entity/Event;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p2}, Lio/bidmachine/analytics/entity/Event;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lio/bidmachine/analytics/entity/Event;->getDimensions()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, La/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p2}, Lio/bidmachine/analytics/entity/Event;->getMetrics()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, La/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lb/a;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lb/a;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lb/a;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lb/a;->b:J

    return-wide v0
.end method
