.class final Lms/bd/o/Pgl/x;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
