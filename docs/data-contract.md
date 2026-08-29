# 로컬 데이터 계약

## 저장 위치

모든 실제 지원자 데이터는 `.interview-data/candidates/{candidate-id}/` 아래에 저장한다.

```text
.interview-data/candidates/{candidate-id}/
├── profile.yaml
├── state.yaml
├── sources/
├── analyses/
├── interviews/
│   ├── sessions/
│   └── transcripts/
├── evidence/
│   ├── claims.yaml
│   ├── evidence.yaml
│   └── competency-status.yaml
├── assessments/
└── reports/
```

## 공통 레코드

모든 산출물은 다음 필드를 가진다.

```yaml
id: string
candidate_id: string
kind: string
status: draft | active | paused | completed | needs_refresh | failed
version: integer
created_at: RFC-3339 timestamp
updated_at: RFC-3339 timestamp
source_ids: []
supersedes: null
```

## 주장

```yaml
id: claim-id
statement: 지원자가 신규 온보딩으로 전환율을 개선했다
source_type: resume | portfolio | interview
source_reference: string
project_id: null
competencies: []
verification_status: unverified | partial | verified | conflicting | refuted | unverifiable
confidence: 0.0
```

## 판단 근거

```yaml
id: evidence-id
claim_id: claim-id
source_type: resume | portfolio | interview
source_reference: string
summary: string
relation: supports | contradicts | contextual
strength: weak | medium | strong
eligible_for_hiring: true
```

코칭에서 생성된 판단 근거는 항상 `eligible_for_hiring: false`다.

## 면접 상태

```yaml
id: interview-id
mode: evaluation | coaching
type: career | project | competency
status: active | paused | completed
style_id: string
style_snapshot: {}
target_competencies: []
started_at: RFC-3339 timestamp
updated_at: RFC-3339 timestamp
last_completed_turn: 0
next_question_intent: string
unresolved_branches: []
collected_claim_ids: []
collected_evidence_ids: []
```

## 저장 규칙

- 매 지원자 답변 직후 원문, 질문, 추출 결과와 다음 질문 의도를 원자적으로 갱신한다.
- 기존 결과를 수정해야 하면 새 버전을 만들고 `supersedes`로 연결한다.
- 같은 식별자의 중복 저장을 피하고 타임스탬프를 기록한다.
- 지원자가 중단하면 현재 면접을 `paused`로 저장한다.
- 새 Codex 작업에서 이어갈 때 가장 최근 `active` 또는 `paused` 면접을 확인한다.

