###### Class okhttp3.MultipartBody (okhttp3.MultipartBody)
.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 34
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    .line 41
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    .line 48
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    .line 54
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    .line 61
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_40

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_46

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    .line 63
    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 64
    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 65
    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .registers 6
    .param p1, "boundary"    # Lokio/ByteString;
    .param p2, "type"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lokhttp3/MultipartBody$Part;>;"
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 74
    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    .line 75
    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    .line 77
    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 78
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 201
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_2b

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_30

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 206
    :sswitch_19
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 209
    :sswitch_1f
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 212
    :sswitch_25
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 219
    .end local v0    # "ch":C
    :cond_2b
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object p0

    .line 204
    nop

    :sswitch_data_30
    .sparse-switch
        0xa -> :sswitch_19
        0xd -> :sswitch_1f
        0x22 -> :sswitch_25
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .registers 21
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v4, 0x0

    .line 125
    .local v4, "byteCount":J
    const/4 v3, 0x0

    .line 126
    .local v3, "byteCountBuffer":Lokio/Buffer;
    if-eqz p2, :cond_c

    .line 127
    new-instance v3, Lokio/Buffer;

    .end local v3    # "byteCountBuffer":Lokio/Buffer;
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .restart local v3    # "byteCountBuffer":Lokio/Buffer;
    move-object/from16 p1, v3

    .line 130
    :cond_c
    const/4 v12, 0x0

    .local v12, "p":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "partCount":I
    :goto_15
    if-ge v12, v14, :cond_be

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokhttp3/MultipartBody$Part;

    .line 132
    .local v13, "part":Lokhttp3/MultipartBody$Part;
    iget-object v11, v13, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    .line 133
    .local v11, "headers":Lokhttp3/Headers;
    iget-object v2, v13, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    .line 135
    .local v2, "body":Lokhttp3/RequestBody;
    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 137
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 139
    if-eqz v11, :cond_65

    .line 140
    const/4 v9, 0x0

    .local v9, "h":I
    invoke-virtual {v11}, Lokhttp3/Headers;->size()I

    move-result v10

    .local v10, "headerCount":I
    :goto_43
    if-ge v9, v10, :cond_65

    .line 141
    invoke-virtual {v11, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 142
    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v15

    .line 143
    invoke-virtual {v11, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    .line 144
    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 140
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 148
    .end local v9    # "h":I
    .end local v10    # "headerCount":I
    :cond_65
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    .line 149
    .local v8, "contentType":Lokhttp3/MediaType;
    if-eqz v8, :cond_80

    .line 150
    const-string v15, "Content-Type: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    .line 151
    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    .line 152
    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 155
    :cond_80
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    .line 156
    .local v6, "contentLength":J
    const-wide/16 v16, -0x1

    cmp-long v15, v6, v16

    if-eqz v15, :cond_b0

    .line 157
    const-string v15, "Content-Length: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    .line 158
    invoke-interface {v15, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    .line 159
    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 166
    :cond_9b
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 168
    if-eqz p2, :cond_b8

    .line 169
    add-long/2addr v4, v6

    .line 174
    :goto_a5
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 130
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_15

    .line 160
    :cond_b0
    if-eqz p2, :cond_9b

    .line 162
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 163
    const-wide/16 v16, -0x1

    .line 187
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lokhttp3/MediaType;
    .end local v11    # "headers":Lokhttp3/Headers;
    .end local v13    # "part":Lokhttp3/MultipartBody$Part;
    :goto_b7
    return-wide v16

    .line 171
    .restart local v2    # "body":Lokhttp3/RequestBody;
    .restart local v6    # "contentLength":J
    .restart local v8    # "contentType":Lokhttp3/MediaType;
    .restart local v11    # "headers":Lokhttp3/Headers;
    .restart local v13    # "part":Lokhttp3/MultipartBody$Part;
    :cond_b8
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_a5

    .line 177
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lokhttp3/MediaType;
    .end local v11    # "headers":Lokhttp3/Headers;
    .end local v13    # "part":Lokhttp3/MultipartBody$Part;
    :cond_be
    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 179
    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 180
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 182
    if-eqz p2, :cond_e7

    .line 183
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v16

    add-long v4, v4, v16

    .line 184
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    :cond_e7
    move-wide/from16 v16, v4

    .line 187
    goto :goto_b7
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 108
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    .line 109
    .end local v0    # "result":J
    :goto_8
    return-wide v0

    .restart local v0    # "result":J
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    goto :goto_8
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    .line 114
    return-void
.end method

###### Class okhttp3.MultipartBody.Builder (okhttp3.MultipartBody$Builder)
.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lokio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 283
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    sget-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 287
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    .line 288
    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {p1, p2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 322
    invoke-static {p1, p2, p3}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .registers 4
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 312
    invoke-static {p1, p2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;
    .registers 4
    .param p1, "part"    # Lokhttp3/MultipartBody$Part;

    .prologue
    .line 327
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "part == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_a
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object p0
.end method

.method public addPart(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .registers 3
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 307
    invoke-static {p1}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lokhttp3/MultipartBody;
    .registers 5

    .prologue
    .line 334
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_10
    new-instance v0, Lokhttp3/MultipartBody;

    iget-object v1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    iget-object v2, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    iget-object v3, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/MultipartBody;-><init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V

    return-object v0
.end method

.method public setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;
    .registers 5
    .param p1, "type"    # Lokhttp3/MediaType;

    .prologue
    .line 295
    if-nez p1, :cond_a

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_a
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2f
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    .line 302
    return-object p0
.end method

###### Class okhttp3.MultipartBody.Part (okhttp3.MultipartBody$Part)
.class public final Lokhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lokhttp3/RequestBody;

.field final headers:Lokhttp3/Headers;


# direct methods
.method private constructor <init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .registers 3
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    .line 265
    iput-object p2, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    .line 266
    return-void
.end method

.method public static create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .registers 4
    .param p0, "headers"    # Lokhttp3/Headers;
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 229
    if-nez p1, :cond_a

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_a
    if-eqz p0, :cond_1c

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1c
    if-eqz p0, :cond_2e

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2e
    new-instance v0, Lokhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lokhttp3/MultipartBody$Part;-><init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    return-object v0
.end method

.method public static create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .registers 2
    .param p0, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 246
    if-nez p0, :cond_a

    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lokhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    if-eqz p1, :cond_1e

    .line 253
    const-string v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {v0, p1}, Lokhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Disposition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1, p2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    return-object v0
.end method
