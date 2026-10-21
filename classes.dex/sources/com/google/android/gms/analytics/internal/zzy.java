package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.zzre;

/* JADX INFO: loaded from: classes.dex */
public final class zzy {
    public static zza<Boolean> zzczp = zza.zzh("analytics.service_enabled", false);
    public static zza<Boolean> zzczq = zza.zzh("analytics.service_client_enabled", true);
    public static zza<String> zzczr = zza.zze("analytics.log_tag", "GAv4", "GAv4-SVC");
    public static zza<Long> zzczs = zza.zzb("analytics.max_tokens", 60);
    public static zza<Float> zzczt = zza.zza("analytics.tokens_per_sec", 0.5f);
    public static zza<Integer> zzczu = zza.zza("analytics.max_stored_hits", 2000, 20000);
    public static zza<Integer> zzczv = zza.zzd("analytics.max_stored_hits_per_app", 2000);
    public static zza<Integer> zzczw = zza.zzd("analytics.max_stored_properties_per_app", 100);
    public static zza<Long> zzczx = zza.zza("analytics.local_dispatch_millis", 1800000L, 120000L);
    public static zza<Long> zzczy = zza.zza("analytics.initial_local_dispatch_millis", 5000L, 5000L);
    public static zza<Long> zzczz = zza.zzb("analytics.min_local_dispatch_millis", 120000);
    public static zza<Long> a = zza.zzb("analytics.max_local_dispatch_millis", 7200000);
    public static zza<Long> b = zza.zzb("analytics.dispatch_alarm_millis", 7200000);
    public static zza<Long> c = zza.zzb("analytics.max_dispatch_alarm_millis", 32400000);
    public static zza<Integer> d = zza.zzd("analytics.max_hits_per_dispatch", 20);
    public static zza<Integer> e = zza.zzd("analytics.max_hits_per_batch", 20);
    public static zza<String> f = zza.zzr("analytics.insecure_host", "http://www.google-analytics.com");
    public static zza<String> g = zza.zzr("analytics.secure_host", "https://ssl.google-analytics.com");
    public static zza<String> h = zza.zzr("analytics.simple_endpoint", "/collect");
    public static zza<String> i = zza.zzr("analytics.batching_endpoint", "/batch");
    public static zza<Integer> j = zza.zzd("analytics.max_get_length", 2036);
    public static zza<String> k = zza.zze("analytics.batching_strategy.k", zzm.BATCH_BY_COUNT.name(), zzm.BATCH_BY_COUNT.name());
    public static zza<String> l = zza.zzr("analytics.compression_strategy.k", zzo.GZIP.name());
    public static zza<Integer> m = zza.zzd("analytics.max_hits_per_request.k", 20);
    public static zza<Integer> n = zza.zzd("analytics.max_hit_length.k", 8192);
    public static zza<Integer> o = zza.zzd("analytics.max_post_length.k", 8192);
    public static zza<Integer> p = zza.zzd("analytics.max_batch_post_length", 8192);
    public static zza<String> q = zza.zzr("analytics.fallback_responses.k", "404,502");
    public static zza<Integer> r = zza.zzd("analytics.batch_retry_interval.seconds.k", 3600);
    public static zza<Long> s = zza.zzb("analytics.service_monitor_interval", 86400000);
    public static zza<Integer> t = zza.zzd("analytics.http_connection.connect_timeout_millis", 60000);
    public static zza<Integer> u = zza.zzd("analytics.http_connection.read_timeout_millis", 61000);
    public static zza<Long> v = zza.zzb("analytics.campaigns.time_limit", 86400000);
    public static zza<String> w = zza.zzr("analytics.first_party_experiment_id", "");
    public static zza<Integer> z = zza.zzd("analytics.first_party_experiment_variant", 0);
    public static zza<Boolean> A = zza.zzh("analytics.test.disable_receiver", false);
    public static zza<Long> B = zza.zza("analytics.service_client.idle_disconnect_millis", 10000L, 10000L);
    public static zza<Long> C = zza.zzb("analytics.service_client.connect_timeout_millis", 5000);
    public static zza<Long> D = zza.zzb("analytics.service_client.second_connect_delay_millis", 5000);
    public static zza<Long> E = zza.zzb("analytics.service_client.unexpected_reconnect_millis", 60000);
    public static zza<Long> F = zza.zzb("analytics.service_client.reconnect_throttle_millis", 1800000);
    public static zza<Long> G = zza.zzb("analytics.monitoring.sample_period_millis", 86400000);
    public static zza<Long> H = zza.zzb("analytics.initialization_warning_threshold", 5000);

    public static final class zza<V> {
        private final V I;
        private final zzre<V> J;

        private zza(zzre<V> zzreVar, V v) {
            com.google.android.gms.common.internal.zzab.zzaa(zzreVar);
            this.J = zzreVar;
            this.I = v;
        }

        static zza<Float> zza(String str, float f) {
            return zza(str, f, f);
        }

        static zza<Float> zza(String str, float f, float f2) {
            return new zza<>(zzre.zza(str, Float.valueOf(f2)), Float.valueOf(f));
        }

        static zza<Integer> zza(String str, int i, int i2) {
            return new zza<>(zzre.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
        }

        static zza<Long> zza(String str, long j, long j2) {
            return new zza<>(zzre.zza(str, Long.valueOf(j2)), Long.valueOf(j));
        }

        static zza<Boolean> zza(String str, boolean z, boolean z2) {
            return new zza<>(zzre.zzm(str, z2), Boolean.valueOf(z));
        }

        static zza<Long> zzb(String str, long j) {
            return zza(str, j, j);
        }

        static zza<Integer> zzd(String str, int i) {
            return zza(str, i, i);
        }

        static zza<String> zze(String str, String str2, String str3) {
            return new zza<>(zzre.zzab(str, str3), str2);
        }

        static zza<Boolean> zzh(String str, boolean z) {
            return zza(str, z, z);
        }

        static zza<String> zzr(String str, String str2) {
            return zze(str, str2, str2);
        }

        public V get() {
            return this.I;
        }
    }
}
