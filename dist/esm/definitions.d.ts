export interface ElapsedRealtimePlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    getElapsedRealtime(): Promise<{
        elapsedTime: number;
    }>;
}
