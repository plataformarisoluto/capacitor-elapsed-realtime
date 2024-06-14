import { registerPlugin } from '@capacitor/core';

import type { ElapsedRealtimePlugin } from './definitions';

const ElapsedRealtime = registerPlugin<ElapsedRealtimePlugin>(
  'ElapsedRealtime');

export * from './definitions';
export { ElapsedRealtime };
